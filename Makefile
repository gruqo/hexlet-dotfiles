name: Makefile CI

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  run_app:
    runs-on: [ubuntu-latest]
    steps:
      # Чекаутим код
      - uses: actions/checkout@master
      # Устанавливаем python нужной версии
      - uses: actions/setup-python@v1
        with:
          python-version: '3.8'
          architecture: 'x64'
      - name: Run tests
        run: hello.py 

#jobs:
#  build:
#
#    runs-on: ubuntu-latest
#
#    steps:
#    - uses: actions/checkout@v3
#    
#    - name: configure
#      run: ./configure
#      
#    - name: Install dependencies
#      run: make
#      
#    - name: Run check
#      run: make check
#      
#    - name: Run distcheck
#      run: make distcheck
