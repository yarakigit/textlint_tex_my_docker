# Docker image build
- name : textlint
    ~~~bash
    $ docker build -t textlint .
    $ docker build --platform linux/amd64 -t textlint .
    ~~~

# TeX build
- name : tex
    ~~~bash
    $ docker run -it --rm -v "$PWD":/workdir textlint
    $ textlint --dry-run main.tex # not fix file
    $ textlint --fix main.tex # fix file
    ~~~