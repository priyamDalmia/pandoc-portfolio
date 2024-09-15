Generate a complete portfolio that includes a modern CV, a personal website, and a cover letter from a single YAML (or markdown) file.

1. CV - Latex formatted, add citations. 
2. Personal Website - 
    - features like contact page 
    - social links 
    - github analytics 

# Usage 

## locally

1. requirements
    -   pandoc 
    -   latex 

2. clone the project 

3. go to step 4  

## docker

all of this will be done automatically for you. Just the container where to output the files. I prefer to keep this folder my github page repository and add a hook for commit at every write. All the benefits of versioning.  

## commands 

```
make resume
# pandoc --template html-template.html -s -o index.html --metadata-file templates/template-data.yaml test.md 
``` 

# Advanced Usage

Pages and Blogs 

Additionally, if you are familiar with TeX then you may edit the templates. More about pandoc templates can be found here. 

Seperate YAML files

# License 

