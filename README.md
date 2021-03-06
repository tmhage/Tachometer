# README

## Tachometer
Through Tachometer you can measure the developers team progress on projects. It measures the teams happiness and the storypoints.

### Steps
1. Setting up the project (designing database structure and userflow)
2. Creating the project in the terminal, open repository on github, deploy to codaisseur.cloud
3. Create model Project, Sprint, Devise, Experiment, Team, teammember
4. Create view pages

### Database Structure
  Models

  - Project:
    - ID
    - Name
    - Description
    - Active
    - Created_at
    - Updated_at
    - Current stage id
    - Coach_ID
    - User_ID (= Productowner)
    - Portfoliomanager_id

  - Phase:
    - Start_date
    - End_date
    - Interval
    - Sequence
    - Long_term_vision
    - KPI's
    - Criteria
    - Bottlenecks
    - Problem_definition
    - Solutions
    - Long_term
    - Key_benefits
    - Vision
    - Test_first
    - Proof_of_value
    - Background

  - Sprint:
    - ID
    - Name
    - Start_date
    - End_date
    - Completed
    - Created_at
    - Updated_at

  - Experiment:
    - ID
    - Name
    - Start_date
    - End_date
    - Completed
    - Created_at
    - Updated_at

  - Team:
    - ID
    - Phase_id
    - Created_at
    - Updated_at

  User access:
    - Devise
    - Cancancan
    - Rails_admin

    Role for adminrights: "Coach"

### Running Locally
https://github.com/angela2389/Tachometer
SSH: git@github.com:angela2389/Tachometer.git
Deis: http://tacho-meter.codaisseur.cloud

* Ruby version

  2.3.1
