#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/yusufbagussh/item-app:v1

# Melakukan login ke GitHub Packages dengan token otentikasi / token personal access
docker login ghcr.io -u yusufbagussh -p $GH_TOKEN

# Melakukan push image ke GitHub Packages
docker push ghcr.io/yusufbagussh/item-app:v1
