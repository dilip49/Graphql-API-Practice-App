# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ruby '2.7.2'

* System dependencies
  Ruby on rails 6.0.4

* Basic Mutation example
  mutation {
  
  createPost(input: {
    title: "Hello, this is testing"
    body: "This is body for the testing"
    userId: 1
  }) {
    post {
      title
      body
     }errors
    }
  }

