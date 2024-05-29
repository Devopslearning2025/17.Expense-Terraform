#!/bin/bash

dnf install ansible -y

cd /tmp
git clone https://github.com/Devopslearning2025/9.Expense-Ansible-Roles.git
cd 9.Expense-Ansible-Roles
ansible-playbook main.yaml -e component=backend -e login_password=ExpenseApp1
ansible-playbook main.yaml -e component=frontend
