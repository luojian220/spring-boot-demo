package com.luno.softone.dao;

import org.apache.curator.RetryPolicy;
import org.apache.curator.framework.CuratorFramework;
import org.apache.curator.framework.CuratorFrameworkFactory;
import org.apache.curator.framework.recipes.locks.InterProcessMutex;
import org.apache.curator.retry.BoundedExponentialBackoffRetry;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: ZkLockCuratorTest
 * @Reason:
 * @date: 2019年04月17日 18:55
 * @since JDK 1.7
 */
public class ZkLockCuratorTest {

    /**
     * 测试 zk 分布式锁
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {



        Runnable runnable = new Runnable() {
            public void run() {
                InterProcessMutex mutex = null;
                CuratorFramework client = null;
                try {
                    RetryPolicy retryPolicy = new BoundedExponentialBackoffRetry(1000,3,3);
                    client = CuratorFrameworkFactory.newClient("127.0.0.1:2181",retryPolicy);
                    client.start();
                    mutex = new InterProcessMutex(client,"/locks/test2");
                    // 获得了锁
                    mutex.acquire();
                    secskill();
                    System.out.println(Thread.currentThread().getName() + "正在运行");
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (mutex != null) {
                        // 完成业务 ， 释放锁
                        try {
                            mutex.release();
                            client.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        };

        for (int i = 0; i < 10; i++) {
            Thread t = new Thread(runnable);
            t.start();
        }


    }

    static int n = 500;

    public static void secskill() {
        System.out.println(--n);
    }
}
