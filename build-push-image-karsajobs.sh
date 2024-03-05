#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format GitHub Packages
docker tag karsajobs:latest ghcr.io/yusufbagussh/karsajobs:latest

# Melakukan login ke GitHub Packages dengan token otentikasi / token personal access
docker login ghcr.io -u yusufbagussh -p $GH_TOKEN

# Melakukan push image ke GitHub Packages
docker push ghcr.io/yusufbagussh/karsajobs:latest
