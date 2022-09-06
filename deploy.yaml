apiVersion: v1
kind: Service
metadata:
  name: myapp-svc
  labels:
    app: springboot
spec:
  type: LoadBalancer
  ports:
  - port: 8080
  selector:
    app: springboot
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
  labels:
    app: springboot
spec:
  replicas: 2
  selector:
    matchLabels:
      app: springboot
  template:
    metadata:
      labels:
        app: springboot
    spec:
      containers:
      - name: {{.Values.name}}
        image: {{.Values.image}}
        imagePullPolicy: Always
        ports:
        - containerPort: 8080
