package com.ktds.flyingcube.crypto;

import com.ktds.flyingcube.common.utils.AESUtils;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class AESTest {

    private static final Logger log = LoggerFactory.getLogger(AESTest.class);

    @Autowired
    private AESUtils aesUtils;

    @Test
    void runDecryptTest() {
        String plainText = "where is my hat?";
        String chipherText = aesUtils.encrypt(plainText);
        // String chipherText = "U2FsdGVkX19C760rM7qZjGgE7lIJxIUdFEnqn3+2x9MNnhisL56b1eUsDiUfXKsL";
        final String decryptText = aesUtils.decrypt(chipherText);
        assertThat(decryptText).isEqualTo(plainText);
        log.info("@decrypt text=====>{}", decryptText);
        log.info("@plain text=======>{}", plainText);
    }
}
