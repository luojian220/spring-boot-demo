package com.luno.softone.utils;

import com.luno.softone.common.utils.ConstantsUtil;
import org.apache.commons.fileupload.util.Streams;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class FileUtils {
	private static final Logger logger = LoggerFactory
			.getLogger(FileUtils.class);

	/**
	 * 上传图片访问域名，默认值
	 */
	// public static String host = "https://minip.51wangjia.com:1443";
	/**
	 * 存储的路径，默认的为c盘符
	 */
	// public static String directory = "c:/";

	/**
	 * 图片的大小配置，默认为2048000
	 */
	public static long imagesize = 2048000;

	/**
	 * 图片的类型配置默认如下
	 */
	public static String imagetype = "image/bmp,image/png,image/jpeg,image/jpg";

	/**
	 * 文件上传的大小限制
	 */
	public static long filesize = 20971525;

	/**
	 * 文件上传文件的类型
	 */
	public static String filetype = "application/msword,application/pdf,application/zip,video/mpeg,video/quicktime,video/x-sgi-movie,video/mpeg,video/x-msvideo,audio/x-mpeg,application/octet-stream";

	/**
	 * 配置路径的字段
	 */
	public static final String DIRECTORY = "fileUtils.uploadFileDirectory";

	/**
	 * 配置图片大小的字段
	 */
	public static final String IMAGESIZE = "fileUtils.imgSize";

	/**
	 * 配置图片类型的字段
	 */
	public static final String IMAGETYPE = "fileUtils.imgType";

	/**
	 * 文件的大小
	 */
	public static final String FILESIZE = "fileUtils.fileSize";

	/**
	 * 文件的类型
	 */
	public static final String FILETYPE = "fileUtils.fileType";

	/**
	 * 上传图片访问域名
	 */
	// public static final String HOST = "fileUtils.host";

	/**
	 * 文件所支持的全部类型(图片,office文件,压缩包,视频,音频)
	 */
	public static String[] sporting_filetype;

	/**
	 * 上传的结果
	 *
	 * @author cp UPLOAD_SUCCESS:"上传成功" UPLOAD_SIZE_ERROR:"上传文件过大"
	 *         UPLOAD_TYPE_ERROR:"上传文件类型错误" UPLOAD_FILE:"上传文件失败"
	 */
	public static enum Upload {
		UPLOAD_SUCCESS("上传成功", 1), UPLOAD_SIZE_ERROR("上传文件过大", 2), UPLOAD_TYPE_ERROR(
				"上传文件类型错误", 3), UPLOAD_FILE("上传文件失败", 4), FILE_DOWNLOAD_SUCCESS(
				"文件下载成功", 5), FILE_NOTFOUND("未找到该文件", 6);

		// 成员变量
		private String name;
		@SuppressWarnings("unused")
		private int index;

		// 构造方法
		private Upload(String name, int index) {
			this.name = name;
			this.index = index;
		}

		// 覆盖toString方法
		@Override
		public String toString() {
			return this.name;
		}

	}

	/**
	 * static语句块读取配置文件
	 */
	static {
		Properties properties = new Properties();
		try {
			InputStream in = new BufferedInputStream(
					FileUtils.class
							.getResourceAsStream("/fileupload.properties"));
			properties.load(in);
			Iterator<String> it = properties.stringPropertyNames().iterator();
			while (it.hasNext()) {
				String key = it.next();
				String value = properties.getProperty(key);
				logger.info("读取配置文件..." + key + ":" + value);
				switch (key) {
				// 如果是路径
				// case DIRECTORY:
				// // 判断是否存在该文件夹如果没有则要重新创建
				// mkdir(value);
				// // directory = value;
				// break;
				// 如果是图片的格式
				case IMAGETYPE:
					imagetype = value;
					break;
				// 如果是图片的大小
				case IMAGESIZE:
					imagesize = Long.parseLong(value);
					break;
				// 如果是文件的大小
				case FILESIZE:
					filesize = Long.parseLong(value);
					break;
				// 如果是文件的类型
				case FILETYPE:
					filetype = value;
					break;
				// case HOST:
				// host = value;
				// break;
				default:
					break;
				}
			}
			// 读取配置后把支持图片的和支持文件的放在一起
			String[] imagetypes = imagetype.split(",");
			String[] filetypees = filetype.split(",");
			sporting_filetype = new String[imagetypes.length
					+ filetypees.length];
			System.arraycopy(imagetypes, 0, sporting_filetype, 0,
					imagetypes.length);
			System.arraycopy(filetypees, 0, sporting_filetype,
					imagetypes.length, filetypees.length);
		} catch (FileNotFoundException e) {
			logger.error("未发现配置文件");
		} catch (IOException e) {
			logger.error("读取配置文件失败");
		}
	}

	private static void mkdir(String value) {
		File file = new File(value);
		if (!file.exists() && !file.isDirectory()) {
			// 创建文件夹
			file.mkdirs();
		}
	}

	/**
	 * 上传文件
	 *
	 * @param file
	 *            上传的文件
	 * @return
	 */
	public static String upload(MultipartFile[] file) {
		String directory = SysConfigUtil
				.getValue(ConstantsUtil.fileUtilsUploadFileDirectory);
		return upload(file, directory, null, null).get(0);
	}

	/**
	 * 上传文件
	 *
	 * @param file
	 *            上传的文件
	 * @param staffId
	 *            员工编号
	 * @return
	 */
	public static String upload(MultipartFile[] file, String staffId) {
		String directory = SysConfigUtil
				.getValue(ConstantsUtil.fileUtilsUploadFileDirectory);
		return upload(file, directory, staffId).get(0);
	}

	/**
	 * 上传文件(支持多文件上传)
	 *
	 * @param multipartFiles
	 *            上传的文件
	 * @param rootDir
	 *            根目录
	 * @param parentDir
	 *            上传文件制定的父文件夹，格式为A/b,可以为空
	 * @param storageFileName
	 *            上传的文件的别名,注意上传文件名不用带后缀
	 * @return
	 */
	public static List<String> upload(MultipartFile[] multipartFiles,
                                      String rootDir, String parentDir, String storageFileName) {
		List<String> stringList = new ArrayList<>();
		if (multipartFiles != null && multipartFiles.length > 0) {
			String laString = "";
			String storagePath = "";
			String directory = SysConfigUtil
					.getValue(ConstantsUtil.fileUtilsUploadFileDirectory);
			mkdir(directory);
			// 先判断要存储的文件夹是否存在，如果不存在就重新创建
			String path = (StringUtils.isEmpty(rootDir) ? directory : rootDir)
					+ (!StringUtils.isEmpty(parentDir) ? ("/" + parentDir) : "");
			mkdir(path);
			for (MultipartFile file : multipartFiles) {
				// 先判断文件的类型是否符合配置要求
				if (FileUtils.checkFileType(file, sporting_filetype)) {
					/***** 判断文件的大小 *****/
					String type = file.getContentType().substring(0,
							file.getContentType().lastIndexOf("/"));
					// 如果是图片,且大小超过范围的，如果是文件，且大小超过范围的直接返回
					if ((type.equals("image") && !FileUtils.checkFileSize(file,
							FileUtils.imagesize))
							|| (!type.equals("image") && !FileUtils
									.checkFileSize(file, filesize))) {
						logger.info("文件过大");

					}
					// 获取变量名file,文件类型,文件名
					logger.info("上传的文件：" + file.getName() + ","
							+ file.getContentType() + ","
							+ file.getOriginalFilename());
					laString = file.getOriginalFilename().substring(
							file.getOriginalFilename().lastIndexOf("."));
					try {
						if (!file.isEmpty()) {
							// 判断sotrageName是否为空,如果不为空就以存储的命名,为空就以原来的名称命名
							storagePath = path
									+ "/"
									+ ((storageFileName != null) ? (storageFileName + laString)
											: file.getOriginalFilename());
							logger.info("保存的路径为：" + storagePath);
							Streams.copy(file.getInputStream(),
									new FileOutputStream(storagePath), true);
							storagePath = ((parentDir != null) ? ("/" + parentDir)
									: "")
									+ "/"
									+ ((storageFileName != null) ? (storageFileName + laString)
											: file.getOriginalFilename());
							stringList.add(storagePath);
						}
					} catch (Exception e) {
						logger.error("上传文件失败");
						e.printStackTrace();
					}
				} else {
					logger.info("上传文件类型有误");
				}
			}
			logger.info("上传文件成功");
		} else {
			logger.info("上传文件失败");
		}
		return stringList;
	}

	/**
	 * 关于头像业务逻辑 1、存放路径/opt/ys-crms/statics/pic/portrait 其中portrait代表头像的意思
	 * 2、上传的图像以当前员工的工号命名，如果存在（匹配的原则是去除后缀看是否存在相同的）把原来删除，上传新的 3、#上传图片访问域名
	 * https://minip.51wangjia.com:1443
	 * 如：https://minip.51wangjia.com:1443/statics/pic/portrait/YS-0005.png
	 * 4、数据库存放的头像名称是YS-0005.png就够了
	 */

	/**
	 * 上传文件(支持多文件上传)
	 *
	 * @param multipartFiles
	 *            上传的文件
	 * @param rootDir
	 *            根目录
	 * @param storageFileName
	 *            上传的文件的别名,注意上传文件名不用带后缀
	 * @return
	 */
	public static List<String> upload(MultipartFile[] multipartFiles,
                                      String rootDir, String storageFileName) {

		List<String> stringList = new ArrayList<>();
		if (multipartFiles != null && multipartFiles.length > 0) {
			String laString = "";
			String storagePath = "";
			String directory = SysConfigUtil
					.getValue(ConstantsUtil.fileUtilsUploadFileDirectory);
			mkdir(directory);
			// 先判断要存储的文件夹是否存在，如果不存在就重新创建
			String path = (StringUtils.isEmpty(rootDir) ? directory : rootDir);
			mkdir(path);
			for (MultipartFile file : multipartFiles) {
				// 先判断文件的类型是否符合配置要求
				if (FileUtils.checkFileType(file, sporting_filetype)) {
					/***** 判断文件的大小 *****/
					String type = file.getContentType().substring(0,
							file.getContentType().lastIndexOf("/"));
					// 如果是图片,且大小超过范围的，如果是文件，且大小超过范围的直接返回
					if ((type.equals("image") && !FileUtils.checkFileSize(file,
							FileUtils.imagesize))
							|| (!type.equals("image") && !FileUtils
									.checkFileSize(file, filesize))) {
						logger.info("文件过大");

					}
					// 获取变量名file,文件类型,文件名
					logger.info("上传的文件：" + file.getName() + ","
							+ file.getContentType() + ","
							+ file.getOriginalFilename());
					laString = file.getOriginalFilename().substring(
							file.getOriginalFilename().lastIndexOf("."));
					String fileName = storageFileName + laString;
					try {
						if (!file.isEmpty()) {
							// 判断sotrageName是否为空,如果不为空就以存储的命名,为空就以原来的名称命名
							storagePath = path
									+ "/"
									+ ((storageFileName != null) ? (storageFileName + laString)
											: file.getOriginalFilename());
							logger.info("保存的路径为：" + storagePath);
							String[] files = FileUtils.filenameFilter(
									storageFileName, path);
							if (files.length > 0) {
								for (String fName : files) {
									String dir = path + "/" + fName;
									File f = new File(dir);
									if (f.exists()) {
										f.delete();
									}
								}

							}
							logger.info("文件名称：" + fileName);
							Streams.copy(file.getInputStream(),
									new FileOutputStream(storagePath), true);
							stringList.add(fileName);
						}
					} catch (Exception e) {
						logger.error("上传文件失败");
						e.printStackTrace();
					}
				} else {
					logger.info("上传文件类型有误");
				}
			}
			logger.info("上传文件成功");
		} else {
			logger.info("上传文件失败");
		}
		return stringList;
	}

	/**
	 * 下载文件
	 *
	 * @param filePath
	 *            文件的路径
	 * @param fileReName
	 *            文件的下载显示的别名
	 * @return 文件的对象
	 * @throws IOException
	 */
	public static ResponseEntity<byte[]> download(String filePath,
                                                  String fileReName) throws IOException {
		// 指定文件,必须是绝对路径
		File file = new File(filePath);
		// 下载浏览器响应的那个文件名
		String dfileName = new String(fileReName.getBytes("GBK"), "iso-8859-1");
		// 下面开始设置HttpHeaders,使得浏览器响应下载
		HttpHeaders headers = new HttpHeaders();
		// 设置响应方式
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		// 设置响应文件
		headers.setContentDispositionFormData("attachment", dfileName);
		// 把文件以二进制形式写回
		ResponseEntity<byte[]> result = null;
		try {
			result = new ResponseEntity<byte[]>(
					org.apache.commons.io.FileUtils.readFileToByteArray(file),
					headers, HttpStatus.CREATED);
		} catch (Exception e) {
			logger.error(e.toString());
		}
		return result;
	}

	public static ResponseEntity<byte[]> downloadLog() throws IOException {
		String filePath=SysConfigUtil.getValue("downloadpath","");
		String fileReName=SysConfigUtil.getValue("downloadname","");
		String downloadfile="log"+System.currentTimeMillis()+".zip";
		ZipFile(filePath+File.separator+fileReName,filePath+File.separator+downloadfile);
		return  download(filePath+File.separator+downloadfile,downloadfile);
	}
	/**
	 *
	 * @Description: TODO(压缩单个文件)
	 * @author duchunsheng
	 * @date 2015-5-21 上午11:23:37
	 * @param filepath
	 * @param zippath
	 * @return void 返回类型
	 * @throws
	 */
	public static void ZipFile(String filepath, String zippath) {
		ZipOutputStream zipOut = null;
		try {
			File file = new File(filepath);
			File zipFile = new File(zippath);
			InputStream input = null;
			try {
				input = new FileInputStream(file);
				zipOut = new ZipOutputStream(new FileOutputStream(zipFile));
				zipOut.putNextEntry(new ZipEntry(file.getName()));
				int temp = 0;
				while ((temp = input.read()) != -1) {
					zipOut.write(temp);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if (input != null) {
					input.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				zipOut.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// 清空已有的文件内容，以便下次重新写入新的内容
	public static void clearInfoForFile(String fileName) {
		File file = new File(fileName);
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		FileWriter fileWriter;
		try {
			fileWriter = new FileWriter(file,false);
			fileWriter.write("");
			fileWriter.flush();
			fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 检查文件的格式
	 *
	 * @return
	 */
	public static boolean checkFileType(MultipartFile file,
                                        String[] supprtedTypes) {
		String fileType = file.getContentType();
		logger.info("文件的格式为：" + fileType);
		return Arrays.asList(supprtedTypes).contains(fileType);
	}

	/**
	 * 判断文件的大小是否符合要求
	 *
	 * @param maxSize
	 *            最大文件
	 * @return
	 */
	public static boolean checkFileSize(MultipartFile file, long maxSize) {
		logger.info("文件的大小比较：" + file.getSize() + ",max:" + maxSize);
		return file.getSize() <= maxSize;
	}

	public static void main(String[] args) {
		/*
		 * String path = "C:/data/img/statics/pic/20181126"; String[] files =
		 * filenameFilter("汪峰", path); System.out.println(files.length);
		 */
		// String fileName = "YS-0061.jpg";
		// System.out.println(link(fileName));

//		ZipFile("D:\\wolf-work\\apache-tomcat-8.5.33\\logs\\catalina.out",
//				"d:\\a.zip");


	}

	/**
	 * 查找名称是否存在
	 *
	 * @param name
	 *            待查找的名称（去掉后缀名的文件）
	 * @param path
	 *            文件路径
	 * @return
	 */
	public static String[] filenameFilter(String name, String path) {
		File f = new File(path);
		String[] files = f.list(new FilenameFilter() {
			@Override
			public boolean accept(File file, String fileName) {
				return name.equals(fileName.split("\\.")[0]);
			}
		});
		return files;
	}

	/**
	 * 拼接图片访问完整链接
	 *
	 * @param fileName
	 * @return
	 */
	public static String link(String fileName) {

		String directory = SysConfigUtil
				.getValue(ConstantsUtil.fileUtilsUrlDirectory);
		String link = SysConfigUtil.getValue(ConstantsUtil.fileUtilsHost) + "/"
				+ directory + "/" + fileName;
		logger.info("完整链接为：" + link);
		return link;
	}

	// /**
	// * 切割路径
	// * @param dir 文件保存目录
	// * @return
	// */
	// private static String extractStr(String dir) {
	// if (dir.split("\\/").length >= 3) {
	// for (int i = 0; i < 3; i++) {
	// dir = dir.substring(dir.indexOf("/") + 1);
	// }
	// }
	// return dir;
	//
	// }

}
