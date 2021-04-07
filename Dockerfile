FROM python:buster

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# COPY external ./usr/src/app/

CMD [ "python", "./dhcp-stats-prometheus.py", "-p", "12776", "-c4", "/mnt/dhcpd.conf", "-l4", "/mnt/dhcpd.leases", "-m", "subnets" ]