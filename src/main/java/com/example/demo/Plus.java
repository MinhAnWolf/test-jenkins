package com.example.demo;

import org.springframework.stereotype.Service;

@Service
public class Plus {
  public int plus() {
    return 1000 + 2;
  }

  public void test() {
    System.out.println("Test merge request");
    System.out.println("hello word");
  }
}
