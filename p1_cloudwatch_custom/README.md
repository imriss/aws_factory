180604: 7392 Reza Farrahi (imriss@yahoo.com) 
# P1. Custom metrics of a service via Docker

## Context: 
1. You have a Docker Compose with a few containers running.
2. There is a service exposed via container "cool_service_container" on port "12341".
   - The "cool_service_container" reports the status of its service via: "http://cool_service_container:12341/cool-service-root/service/isRunning"
3. The output of the status URL is a JSON in which the status is reported by setting "running" to "true" or "false".
4. We want to retrieve the status of "cool_service_container" via another container called "awesome_container".

## Additions:
1. The CloudWatch metrics "${hosthost}RFCoolService" is used to report the status.
    - If the status is "true", the metrics is set to 100, else if the status is "false" it is set to 30, and otherwise it is set to 20.
2. We want to have the alarm that is created based on this metrics to "repeat" itself every hour. To achieve this, the metrics is reset to 100 at every mid-hour.
