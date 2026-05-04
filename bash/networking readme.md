# 🌐 Networking + AWS VPC Complete Notes (README)

---

# 📌 1. IP Addressing Detailes

An **IP address** uniquely identifies a device on a network.

## Types

* **IPv4** → `192.168.1.1` (32-bit)
* **IPv6** → `2001:db8::1` (128-bit)

## Categories

* **Public IP** → Accessible over the internet
* **Private IP** → Used within internal networks

## Private IP Ranges

* `10.0.0.0 – 10.255.255.255`
* `172.16.0.0 – 172.31.255.255`
* `192.168.0.0 – 192.168.255.255`

---

# 📌 2. CIDR (Classless Inter-Domain Routing)

CIDR defines IP ranges using notation:

```
192.168.1.0/24
```

* `/24` → 24 bits network, 8 bits host

## Common CIDR Blocks

* `/32` → 1 IP
* `/24` → 256 IPs
* `/16` → 65,536 IPs

---

# 📌 3. Subnets

A **subnet** is a smaller network inside a larger network.

## Purpose

* Network segmentation
* Improved security
* Efficient IP allocation

---

# 📌 4. Ports

Ports are logical endpoints for communication.

## Common Ports

* HTTP → 80
* HTTPS → 443
* SSH → 22
* FTP → 21

---

# 📌 5. OSI Model

| Layer | Name         | Function               |
| ----- | ------------ | ---------------------- |
| 7     | Application  | User interaction       |
| 6     | Presentation | Encryption, formatting |
| 5     | Session      | Session management     |
| 4     | Transport    | TCP/UDP                |
| 3     | Network      | IP routing             |
| 2     | Data Link    | MAC addressing         |
| 1     | Physical     | Hardware & signals     |

---

# 📌 6. Layer 1 to Layer 7 Summary

* **Layer 1** → Physical (cables, signals)
* **Layer 2** → Switching (MAC)
* **Layer 3** → Routing (IP)
* **Layer 4** → Transport (TCP/UDP)
* **Layer 5–7** → Application services

---

# ☁️ AWS VPC SECTION

---

# 📌 7. AWS VPC (Virtual Private Cloud)

A **VPC** is a logically isolated network in AWS.

## Features

* Custom CIDR block
* Subnets
* Route tables
* Security controls

---

# 📌 8. AWS Security Group (SG)

Instance-level firewall.

## Key Points

* Stateful
* Allow rules only
* Applied to EC2 instances

---

# 📌 9. AWS NACL (Network ACL)

Subnet-level firewall.

## Key Points

* Stateless
* Allow and Deny rules
* Applied to subnets

---

# 📌 10. SG vs NACL

| Feature    | Security Group | NACL          |
| ---------- | -------------- | ------------- |
| Level      | Instance       | Subnet        |
| Type       | Stateful       | Stateless     |
| Rules      | Allow only     | Allow + Deny  |
| Evaluation | All rules      | Ordered rules |

---

# 📌 11. AWS Load Balancer

Distributes incoming traffic across multiple targets.

## Types

* **ALB (Application Load Balancer)** → HTTP/HTTPS
* **NLB (Network Load Balancer)** → TCP/UDP
* **CLB (Classic Load Balancer)** → Legacy

---

# 📌 12. AWS Internet Gateway (IGW)

Enables communication between VPC and the internet.

## Requirements

* Public IP
* Route table entry to IGW

---

# 📌 13. AWS Subnets

Subdivisions of a VPC.

## Types

* Public Subnet
* Private Subnet

---

# 📌 14. Public vs Private Subnet

| Feature         | Public      | Private   |
| --------------- | ----------- | --------- |
| Internet Access | Yes         | No        |
| IGW Route       | Yes         | No        |
| Use Case        | Web servers | Databases |

---

# 📌 15. AWS Routes

Defines how traffic flows.

## Example

```
0.0.0.0/0 → Internet Gateway
```

---

# 📌 16. AWS Route Tables

Collection of routing rules.

## Types

* Main route table
* Custom route tables

---

# 📌 17. AWS Route 53

AWS DNS service.

## Features

* Domain registration
* DNS routing
* Health checks

---

# 📌 18. AWS VPC Project (Basic Architecture)

## Components

* 1 VPC
* 2 Public Subnets
* 2 Private Subnets
* Internet Gateway
* NAT Gateway
* EC2 Instances

## Traffic Flow

```
User → Internet → Load Balancer → Public Subnet → Private Subnet (DB)
```

---

# 📌 19. AWS VPC Workflow

1. Create VPC (CIDR block)
2. Create subnets (public/private)
3. Attach Internet Gateway
4. Create route tables
5. Associate subnets
6. Launch EC2 instances
7. Configure security groups
8. Add load balancer

# 📌 20. AWS VPC Explained (Simple Analogy)

Think of a VPC as your **private house in the cloud**:

* VPC → House
* Subnets → Rooms
* Route Tables → Roads
* Internet Gateway → Main Gate
* Security Groups → Door Locks
* NACL → Security Guard
