package com.ivnsim.hltapigatewayservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class HltApiGatewayServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(HltApiGatewayServiceApplication.class, args);
    }

}
