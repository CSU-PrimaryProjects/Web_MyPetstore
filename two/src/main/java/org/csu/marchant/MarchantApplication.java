package org.csu.marchant;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("org.csu.marchant.persistence")
public class MarchantApplication {

    public static void main(String[] args) {
        SpringApplication.run(MarchantApplication.class, args);
    }

}
