## create namespace
kubectl_sit create namespace canal

## 修改配置
# 修改 canal-admin-dp.yaml
#         - name: spring.datasource.address
#          value: mysql.default:3306
# 修改 canal-admin-ingress.yaml 中的监听域名
#     
## install canal-admin

kubectl_sit apply -f canal-admin-dp.yaml
kubectl_sit apply -f canal-admin-ingress.yaml
kubectl_sit apply -f canal-admin-service.yaml


 # 修改配置
# 修改 canal-sts.yaml
#         - name: canal.admin.register.cluster
#           value: sit-canal-cluster
#     
 
 # install canal server
 
  kubectl_sit apply -f canal-sts.yaml
  kubectl_sit apply -f canal-service.yaml     