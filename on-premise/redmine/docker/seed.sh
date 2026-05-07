#!/bin/bash

set -e

echo "===== Waiting for Redmine DB ====="
sleep 30

echo "===== Running Redmine Seed ====="

docker exec redmine bash -c "
cd /usr/src/redmine &&
bundle exec rails runner '
if User.find_by_login(\"devops_ryan\").nil?

  hr = User.create!(login: \"hr_anna\", firstname: \"Anna\", lastname: \"Reyes\", mail: \"anna@company.com\", password: \"password123\", password_confirmation: \"password123\")
  it = User.create!(login: \"it_james\", firstname: \"James\", lastname: \"Lopez\", mail: \"james@company.com\", password: \"password123\", password_confirmation: \"password123\")
  dev = User.create!(login: \"devops_ryan\", firstname: \"Ryan\", lastname: \"Cruz\", mail: \"ryan@company.com\", password: \"password123\", password_confirmation: \"password123\")

  hrp = Project.create!(name: \"HR System\", identifier: \"hr-system\")
  itp = Project.create!(name: \"IT Helpdesk\", identifier: \"it-helpdesk\")
  devp = Project.create!(name: \"DevOps Platform\", identifier: \"devops\")

  Issue.create!(project: hrp, subject: \"Payroll bug\", tracker_id: 1, status_id: 1, priority_id: 3, author_id: hr.id)
  Issue.create!(project: itp, subject: \"VPN issue\", tracker_id: 1, status_id: 1, priority_id: 3, author_id: it.id)
  Issue.create!(project: devp, subject: \"CI/CD pipeline fix\", tracker_id: 2, status_id: 1, priority_id: 3, author_id: dev.id)

end
'
"
