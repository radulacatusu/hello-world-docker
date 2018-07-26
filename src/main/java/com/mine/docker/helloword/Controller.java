package com.mine.docker.helloword;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller
 */
@RestController
public class Controller {
	
    /**
     * @return
     */
    @GetMapping("/hello")
    public ResponseEntity<String> getHelloWorld() {
        return new ResponseEntity<String>("Hello World2", HttpStatus.OK);
    }
}
