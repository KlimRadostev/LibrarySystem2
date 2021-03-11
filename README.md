# README

## Class structure

### Author Class
name: string  
image_url: string  
slug: string  
  
has_many :publishes  
has_many :books, through: :publishes  

### Book Class
title: string  
description: string  
image_url: string  
  
has_many :publishes  
has_many :authors, through: :publishes  

### Publish Class
belongs_to :author  
belongs_to :book  
  
Used the following structure because a book could have many authors and an author can have many books. 
