package com.luno.softone.dao;

import com.luno.softone.utils.DistributedLockWithZk;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: DistributedLockWithZkTest
 * @Reason:
 * @date: 2019年04月17日 18:02
 * @since JDK 1.7
 */
public class DistributedLockWithZkTest {


    static int n = 500;

    public static void secskill() {
        System.out.println(--n);
    }

    public static void main(String[] args) {

        Runnable runnable = new Runnable() {
            public void run() {
                DistributedLockWithZk lock = null;
                try {
                    lock = new DistributedLockWithZk("127.0.0.1:2181", "test1");
                    lock.lock();
                    secskill();
                    System.out.println(Thread.currentThread().getName() + "正在运行");
                } finally {
                    if (lock != null) {
                        lock.unlock();
                    }
                }
            }
        };

        for (int i = 0; i < 10; i++) {
            Thread t = new Thread(runnable);
            t.start();
        }
    }
}
