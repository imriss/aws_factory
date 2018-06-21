# 180604: 7392 Reza Farrahi (imriss@yahoo.com) 
P1. Custom metrics of a service via Docker

Context: 
c1. You have a Docker Compose with a few containers running.
c2. There is a service exposed via container "cool_service_container" on port "12341".
c3. The "cool_service_container" reports the status of its service via: "http://cool_service_container:12341/cool-service-root/service/isRunning"
c4. The output of the status URL is a JSON in which the status is reported by setting "running" to "true" or "false".
c5. We want to retrieve the status of "cool_service_container" via another container called "awesome_container".

Additions:
a1. The CloudWatch metrics "" is used to report the status.
a2. If the status is "true", it is set to 100, else if the status is "false" it is set to 30, and otherwise it is set to 20.
a3. We want to have the alarm that is created based on this metrics to "repeat" itself every hour. To achieve this, the metrics is reset to 100 at mid-hours.
