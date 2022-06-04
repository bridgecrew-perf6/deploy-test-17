package com.roach.deploytest

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HealthController {

    @GetMapping("/hello")
    fun health(): String {
        return "hello"
    }
}
