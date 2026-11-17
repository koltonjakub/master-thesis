# master-thesis
Repository for Master Thesis: Comparison of hardware implementations of Hash functions

# Running Docker container:
```bash
docker run -it --gpus all -v .:/workspace:z  master-thesis:0.1
```
:z solves problems with SELinux blocking access to docker volume

# Run via docker compose:
```bash
docker compose up
```

Enter running container:
```bash
docker exec -it master-thesis-container bash
```

Cleanup:
```bash
docker compose down
```

# Build main exec
```bash
bazel build //lib:main
```

# Bazel build and run GTest ex.
```bash
bazel test --cxxopt=-std=c++17  --test_output=all //test:hello_test
```