# Biliungual-code-switch

## Here's How to run the Project.

### Environment Setup

#### For CPU Users:
- By default, the project is set up to run in CPU mode.
- No additional configuration is needed for CPU-based usage.

#### For GPU Users:
- Ensure that you have NVIDIA drivers and CUDA installed on your system.
- Ensure the [NVIDIA Container Runtime](https://developer.nvidia.com/nvidia-container-toolkit) is installed to enable GPU support in Docker.

### Build and Run the Project

#### 1. Build and Start the Project (for CPU or GPU)
##### For CPU Users
```bash
docker-compose up --build
```

##### For GPU Users
```bash
docker-compose --env-file .env.gpu  up --build
```
#### 2. Restarting the container
- If you need to restart the container (e.g., after stopping it with Ctrl+C), run:
```bash
  docker-compose down && docker-compose up --build
```
