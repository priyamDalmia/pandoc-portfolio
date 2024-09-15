# -*- Makefile -*- 

RESUME_TEMPLATE = ./templates/resume-template.tex
COVER_TEMPLATE = ./templates/cover-letter-template.tex
WEBSITE_TEMPLATE = ./templates/index-template.html
METADATA = metadata.yaml 
INPUT_FILE = cover.md
RESUME_OUTPUT = resume.pdf
COVER_OUTPUT = cover.pdf
WEBSITE_OUTPUT = index.html

portfolio: resume website cover

website:
	pandoc \
	--template $(WEBSITE_TEMPLATE) \
 	--metadata-file $(METADATA) \
	-s -o $(WEBSITE_OUTPUT) \
	$(INPUT_FILE)

resume: 
	pandoc \
	--template $(RESUME_TEMPLATE) \
 	--metadata-file $(METADATA) \
	-s -o $(RESUME_OUTPUT) \
	$(INPUT_FILE)

cover: 
	pandoc \
	--template $(COVER_TEMPLATE) \
 	--metadata-file $(METADATA) \
	-s -o $(COVER_OUTPUT) \
	$(INPUT_FILE)
# 	--metadata-file $(METADATA)
# pandoc --template html-template.html -s -o index.html --metadata-file templates/template-data.yaml test.md 