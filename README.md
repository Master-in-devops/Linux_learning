# Linux_learning
# Navigation & File Handling
pwd
ls -la
cd /path
mkdir project && cd project
rm -rf old_dir
cp file1 file2
mv old_name new_name

# File Viewing & Editing
cat file.txt
less file.txt
head -n 10 file.txt
tail -n 10 file.txt
tail -f app.log
nano file.txt
vim file.txt

# Search & Text Processing
grep "error" app.log
grep -r "config" /etc
find / -name "*.log"
ps aux | grep nginx
awk '{print $1}' file.txt
sed 's/dev/prod/g' file.txt

# Permissions
chmod 755 script.sh
chmod +x deploy.sh
chown user:group file.txt

# System Monitoring
top
htop
free -m
df -h
du -sh *
uptime
dmesg
journalctl -u nginx

# Process Management
ps aux
kill 1234
kill -9 1234
pkill nginx

# Networking
ip a
ping google.com
curl http://api.com
curl -X POST http://api.com -d '{}'
wget http://example.com/file
ss -tulnp
netstat -tulnp
lsof -i :8080

# Package Management
apt update && apt install nginx
apt remove nginx
yum install nginx
dnf install nginx

# Docker
docker ps
docker ps -a
docker images
docker build -t app .
docker run -d -p 80:80 app
docker logs container_id
docker exec -it container_id bash
docker stop container_id
docker rm container_id

# Kubernetes
kubectl get pods
kubectl get svc
kubectl describe pod pod_name
kubectl logs pod_name
kubectl exec -it pod_name -- bash
kubectl apply -f deployment.yaml
kubectl delete -f deployment.yaml

# Archiving
tar -cvf app.tar dir/
tar -xvf app.tar
tar -czvf app.tar.gz dir/
tar -xzvf app.tar.gz
zip -r app.zip dir/
unzip app.zip

# Remote Access
ssh user@host
scp file user@host:/path
rsync -avz dir/ user@host:/path

# Environment Variables
export ENV=prod
echo $ENV
env

# Pipes, Redirection & Chaining
ps aux | grep node
command1 && command2
command1 || command2
echo "hello" > file.txt
echo "world" >> file.txt

# Productivity
history
!!
clear
alias k="kubectl"

# Real DevOps One-liners
tail -f app.log | grep error
docker logs -f $(docker ps -q | head -1)
kubectl get pods | grep CrashLoop
df -h | grep -v tmpfs
