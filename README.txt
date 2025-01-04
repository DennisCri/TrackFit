TrackFit app developed by Cloud Computing Group 7 - Dennis Criste, Sulayman Chowdhury, Marcel Binek.

TrackFit is a web app developed to track your fitness journey. 
You can log your diet, excercise, sleep, and mental health, and receive insightful feedbacks over time.

Currently deployed on Google Cloud Run with database server hosted on Cloud SQL.

Languages used are:

1. Python
2. HTML
3. CSS
4. JavaScript


MAIN CHANGES FROM SPECIFICATION ARE:

-React not used
-Charts.js javascript library used to display graphs not Python MatPlotLib.
-Github Implemented.
-IAM only allows the app itself to access the database and specified IP addresses.
-Goal setting not implemented yet.
-Search function implemented to view other users progress.

Errors:

-Forgot password button doesn't have any functionality yet.


BONUS FEATURES:

-Email validator, cannot use invalid email.
-Password hash encryption.
-Cat follows cursor on Homepage.
-Search function for any user.

CLOUD USAGE COST REDUCTION:

-Enterprise edition used not Enterprise Plus for Cloud SQL instance.
-Not multi regional only on europe-london as not needed yet.
-Minimum CPUs used, and memory (can upgrade if ever needed).

DEVOPS:

-App is pulled directly from GitHub by Cloud Builder so any updates that are pushed are automatically updated.
-All developers added as collaborators to GitHub repository for seamless development and rapid deployment of new features.



Diagram Architecture:

+------------------+                     +-----------------------------+
|   Developers     |                     | Google Cloud Platform       |
|  +------------+  |                     |                             |
|  | Laptop 1   |  |                     | +-----------------------+   |
|  +------------+  |                     | | Cloud Source          |   |
|                  |  1. Push Code       | | Repositories (GitHub) |   |
|  +------------+  |-------------------->| +-----------------------+   |
|  | Laptop 2   |  |                     |             |               |
|  +------------+  |                     |             v               |
+------------------+                     | +-----------------------+   |
                                         | |    Cloud Build        |   |
                                         | +-----------------------+   |
                                         |             |               |
                                         |        +----+----+          |
                                         |        |         |          |
                                         |        v         v          |
                                         | +------------+  +---------+ |
                                         | |   Cloud    |  | Container||
                                         | |   Storage  |  | Registry ||
                                         | | (CloudSQL) |  |          ||
                                         | +------------+  +---------+ |
                                         |                     |       |
                                         |                     v       |
                                         |           +----------------+|
                                         |           |    Cloud Run   ||
                                         |           +----------------+|
                                         +-----------------------------+
