#!/bin/bash

# Function to create a file with content
create_file_with_content() {
  local file_path=$1
  local content=$2
  mkdir -p "$(dirname "$file_path")" && echo -e "$content" > "$file_path"
}

# --- Frontend Structure ---
# Pages
create_file_with_content "frontend/src/pages/LoginPage.jsx" "import React from 'react';\n\nconst LoginPage = () => <div>Login Page</div>;\n\nexport default LoginPage;"
create_file_with_content "frontend/src/pages/AdminDashboard.jsx" "import React from 'react';\n\nconst AdminDashboard = () => <div>Admin Dashboard</div>;\n\nexport default AdminDashboard;"
create_file_with_content "frontend/src/pages/UserDashboard.jsx" "import React from 'react';\n\nconst UserDashboard = () => <div>User Dashboard</div>;\n\nexport default UserDashboard;"
create_file_with_content "frontend/src/pages/Builder.jsx" "import React from 'react';\n\nconst Builder = () => <div>Form Builder</div>;\n\nexport default Builder;"
create_file_with_content "frontend/src/pages/FormRenderer.jsx" "import React from 'react';\n\nconst FormRenderer = () => <div>Form Renderer</div>;\n\nexport default FormRenderer;"
create_file_with_content "frontend/src/pages/SubmissionHistory.jsx" "import React from 'react';\n\nconst SubmissionHistory = () => <div>Submission History</div>;\n\nexport default SubmissionHistory;"
create_file_with_content "frontend/src/pages/ReviewSubmission.jsx" "import React from 'react';\n\nconst ReviewSubmission = () => <div>Review Submission</div>;\n\nexport default ReviewSubmission;"

# Components
create_file_with_content "frontend/src/components/UserManagement.jsx" "import React from 'react';\n\nconst UserManagement = () => <div>User Management</div>;\n\nexport default UserManagement;"
create_file_with_content "frontend/src/components/AnalyticsDashboard.jsx" "import React from 'react';\n\nconst AnalyticsDashboard = () => <div>Analytics Dashboard</div>;\n\nexport default AnalyticsDashboard;"

# Main Files
create_file_with_content "frontend/src/App.jsx" "import React from 'react';\n\nconst App = () => <div>App Component</div>;\n\nexport default App;"
create_file_with_content "frontend/src/index.js" "import React from 'react';\nimport ReactDOM from 'react-dom';\nimport App from './App';\n\nReactDOM.render(<App />, document.getElementById('root'));"

# Public
create_file_with_content "frontend/public/index.html" "<!DOCTYPE html>\n<html>\n  <head>\n    <title>Form App PWA</title>\n  </head>\n  <body>\n    <div id='root'></div>\n  </body>\n</html>"

# Root Files
create_file_with_content "frontend/tailwind.config.js" "module.exports = {\n  content: ['./src/**/*.{js,jsx,ts,tsx}'],\n  theme: {\n    extend: {},\n  },\n  plugins: [],\n};"
create_file_with_content "frontend/package.json" "{\n  \"name\": \"frontend\",\n  \"version\": \"1.0.0\",\n  \"scripts\": {\n    \"start\": \"react-scripts start\",\n    \"build\": \"react-scripts build\",\n    \"test\": \"react-scripts test\"\n  }\n}"


# --- Backend Structure ---
# Controllers
create_file_with_content "backend/controllers/formController.js" "// Handles form-related logic\nexports.createForm = (req, res) => {\n  res.send('Create Form');\n};"
create_file_with_content "backend/controllers/submissionController.js" "// Handles submission-related logic\nexports.getSubmissions = (req, res) => {\n  res.send('Get Submissions');\n};"
create_file_with_content "backend/controllers/analyticsController.js" "// Handles analytics-related logic\nexports.getAnalytics = (req, res) => {\n  res.send('Get Analytics');\n};"

# Routes
create_file_with_content "backend/routes/auth.js" "const express = require('express');\nconst router = express.Router();\n\nrouter.post('/login', (req, res) => {\n  res.send('Login');\n});\n\nmodule.exports = router;"
create_file_with_content "backend/routes/forms.js" "const express = require('express');\nconst router = express.Router();\n\nrouter.post('/create', (req, res) => {\n  res.send('Create Form');\n});\n\nmodule.exports = router;"
create_file_with_content "backend/routes/submissions.js" "const express = require('express');\nconst router = express.Router();\n\nrouter.get('/', (req, res) => {\n  res.send('Get Submissions');\n});\n\nmodule.exports = router;"
create_file_with_content "backend/routes/analytics.js" "const express = require('express');\nconst router = express.Router();\n\nrouter.get('/', (req, res) => {\n  res.send('Get Analytics');\n});\n\nmodule.exports = router;"

# Models
create_file_with_content "backend/models/User.js" "// User model\nconst mongoose = require('mongoose');\n\nconst userSchema = new mongoose.Schema({\n  username: String,\n  password: String,\n});\n\nmodule.exports = mongoose.model('User', userSchema);"
create_file_with_content "backend/models/Form.js" "// Form model\nconst mongoose = require('mongoose');\n\nconst formSchema = new mongoose.Schema({\n  title: String,\n  fields: Array,\n});\n\nmodule.exports = mongoose.model('Form', formSchema);"
create_file_with_content "backend/models/Submission.js" "// Submission model\nconst mongoose = require('mongoose');\n\nconst submissionSchema = new mongoose.Schema({\n  formId: String,\n  data: Object,\n});\n\nmodule.exports = mongoose.model('Submission', submissionSchema);"

# Root Files
create_file_with_content "backend/db.js" "// Database connection\nconst mongoose = require('mongoose');\n\nmongoose.connect('mongodb://localhost:27017/formapp', {\n  useNewUrlParser: true,\n  useUnifiedTopology: true,\n});\n\nmodule.exports = mongoose;"
create_file_with_content "backend/pouchdb.js" "// PouchDB setup\nconst PouchDB = require('pouchdb');\n\nconst db = new PouchDB('localdb');\n\nmodule.exports = db;"
create_file_with_content "backend/server.js" "const express = require('express');\nconst app = express();\nconst port = 3000;\n\napp.listen(port, () => {\n  console.log('Server running on port ' + port);\n});"
create_file_with_content "backend/dbSync.js" "// Sync logic\nconsole.log('Database sync...');"

# --- Root Directory ---
create_file_with_content "README.md" "# Form App PWA\n\nThis is a Progressive Web App with a frontend and backend."

# Notify the user
echo "Frontend and Backend folders with files have been created successfully!"