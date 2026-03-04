![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍README🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [📚Documentation](#📚documentation)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

I kindly request your thorough examination and absorption of the comprehensive documentation incorporated within the confines of this repository. Your diligent review of the diverse materials provided herein will undoubtedly enhance your understanding of the intricacies and nuances associated with the contents therein.

Please also see following documents:
- [LICENSE](LICENSE.md)
- [SECURITY](SECURITY.md)
- [CONTRIBUTING](CONTRIBUTING.md)

## 📚Documentation

- Install `Helm`:
```bash
sudo snap install helm --classic
```

- Make sure you modify the [values.yaml](/kibana/values.yaml) file specifically for the ingress configuration line `71`and `77`. You need to put in your own FQDN for the `host`. And make sure you put the external IP address of the ingress service in your DNS.

- Create a new `.tgz` file for each Helm chart:
```bash
cd package
helm package ../filebeat/
helm package ../logstash/
helm package ../elasticsearch/ 
helm package ../kibana/
```

- Install `Logstash`:
```bash
helm install filebeat https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/filebeat-7.15.0.tgz
helm install logstash https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/logstash-7.15.0.tgz
helm install elasticsearch https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/elasticsearch-7.15.0.tgz
helm install kibana https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/kibana-7.15.0.tgz
```

- Get the Ip address of the `Kibana` service:
```bash
kubectl get ingress
```

- Uninstall `Logstash`:
```bash
helm uninstall filebeat
helm uninstall logstash
helm uninstall elasticsearch
helm uninstall kibana
```

- Upgrade `Logstash`:
```bash
helm upgrade filebeat https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/filebeat-x.x.x.tgz
helm upgrade logstash https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/logstash-x.x.x.tgz
helm upgrade elasticsearch https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/elasticsearch-x.x.x.tgz
helm upgrade kibana https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/kibana-x.x.x.tgz
```

- Create a new version of the Helm chart for the repository:
```bash
sudo ./package.sh
```

![Network Architecture](/Images/network-architecture.png)
