# SA Timesheet System

## Contributors
Lead: Matthew Damiata
Maintenance: Dyandra Allen, Mrunmayee Kulkarni, Yash Mittal
Infrastructure & Backend: Korhan Citlak, Ethan Breban, Benjamin Keurian, Joshua Szachar

## Announcements
New [timesheet](https://time.binghamtonsa.org) is now live!

## Description
The current SA timesheet system has many faults in the UI, permissions, user experience, and many missing features that are desired by its users. Unfortunately, the codebase for that project was impossible to work with so adding or updating anything was impossible. This new timesheet is built on a modern tech stack and brings many desired features to the timesheet, such as the ability to edit hours worked directly within the application. The purpose of this project is to build a newer, maintainable timesheet for the Student Association, its employees, and developer team.

## Codebase
There is now a [wiki](https://github.com/MatthewDamiata/SA-Timesheet-System/wiki) on the repo for insight into the codebase, features to be implemented, and current known bugs.

## Tutorial
[Google doc](https://docs.google.com/document/d/1okytR5K9YzO0yVjNTVR1zimIgcDAC6dEYu2vx6GkT-w/edit) that provides information on how to operate the timesheet as a user.

## Local Development Build
1. Clone this repo and `cd` into the directory.
2. Run `$ bundle install --without production`.
3. Create an [OAuth App](https://developers.google.com/identity/protocols/oauth2) on Google.
4. Add `http://localhost:3000` to Authorized JavaScript origins and 
- ```http://localhost:3000/auth/google/callback```
- ```http://localhost:3000/auth/google_oauth2/callback```
- ```http://localhost:3000``` 
to Authorized redirect URIs.
6. Run `$ bundle exec figaro install`.
7. Edit `config/application.yml` to include the GOOGLE_CLIENT_ID and GOOGLE_CLIENT_SECRET. The file should look like [this](https://pastebin.com/XQmNULrk).
8. Run `$ rake db:migrate` and `$ rake db:migrate RAILS_ENV=test`.
9. Run `$ rails s -b 0.0.0.0` and visit the local server it creates through your browser.
10. Make any changes, test, submit a PR.
