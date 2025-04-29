#### Exercise 3.6


For this exercise you need to clone course example project [material-applications](https://github.com/docker-hy/material-applications/tree/main).

```
docker build -f Dockerfile_frontend -t example-frontend .
docker build -f Dockerfile_backend -t example-backend .
```

#### Exercise 3.7


For this exercise you need to clone course example project [material-applications](https://github.com/docker-hy/material-applications/tree/main).


```
docker build -f Dockerfile_frontend -t example-frontend .
docker run -p 5000:5000 example-frontend:latest 
docker build -f Dockerfile_backend -t example-backend .
docker run -p 8080:8080 example-backend:latest
```

#### Exercise 3.8


For this exercise you need to clone course example project [material-applications](https://github.com/docker-hy/material-applications/tree/main).


```
docker build -f Dockerfile -t example-frontend .
```

#### Exercise 3.9


For this exercise you need to clone course example project [material-applications](https://github.com/docker-hy/material-applications/tree/main).


```
docker build -f Dockerfile -t example-backend .
```

#### Exercise 3.11


![kubernetes](https://github.com/juleht/DevOps-with-Docker/blob/main/part_3/exercise_3_11/kubernets.png).
