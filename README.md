# longhorn-manifests

## Overview

This repository contains my longhorn storage manifests files for my [home cluster](https://github.com/budimanjojo/home-cluster). Manifests are generated from [longhorn-manager repository](https://github.com/longhorn/longhorn-manager). Github Action is used to update the manifest files everyday.

---

## What is changed

These are the changes from the upstream:
- Manifests are separated into two directories, [setup](manifests/setup) directory contains namespace and crds manifests and [deploy](manifests/deploy) directory contains all the other manifests
- Added kustomization.yaml in each directory
- Image tag is matching the latest version of [longhorn.yaml](https://github.com/longhorn/longhorn/deploy/longhorn.yaml)
