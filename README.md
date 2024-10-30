# Kube-dump (-ng)

Backup (parts of) a Kubernetes cluster as complete yaml manifest files; a fork of [kube-dump by WoozyMasta](https://github.com/WoozyMasta/kube-dump)

![Logo](extras/logo-wide.png)

## What?

With this utility you can save your cluster resources as complete .yaml files.

Key features (compared to the original kube-dump):

* Multi-arch (amd64/arm64)
* Helm Chart to deploy in-cluster to NFS target;
* Encrypts output tarballs with `age` (https://age-encryption.org/)
* Outputs complete YAMLs (with status, uids, selfLinks, etc) - for Disaster Recovery purposes