
## 📝 Requirements

1. Make sure you update your node version to at least: nvm install 20.19.0
2. Check your node version: node --version
3. Install MongoDB: npm install mongodb
4. (If you need more advanced tooling) Install mongosh

## 🚀 Instructions I followed:

[Starting MCP Server as Standalone Service Using npx Command](https://www.mongodb.com/docs/mcp-server/configuration/#starting-mcp-server-as-standalone-service-using-npx-command)

### 🔒 Choose Your Permissions
Since this MCP project was carried out with Cursor, I chose read access to limit the AI's access to my database as a security measure. The role below is what I modeled my MCP after:

- Limited Permissions: Never organization owner role
- Access: Project Read Only (Project)
- Action: View clusters/databases in a project
- Account type: Service Account
- User type: Test user with read only access; not admin

### 🔑 Add environment variables
Use environment variables to pass sensitive configuration such as connection strings; not CL arguments
    
### 📌 How to start
MDB_MCP_CONNECTION_STRING="mongodb://localhost:3000/demo" npx -y mongodb-mcp-server@latest --readOnly

### Let Cursor use this shell command to connect to MongoDB-

mongosh "mongodb+srv://...." --eval "show collections”


## How do you want to connect to MongoDB?

#### Method #1: Atlas link

- Option 1: Using terminal command
    - Run ‘find moods’
    - Says it needs MCP tools to complete my query. It says it’s configured
- Option 2: ‘connect’ via Cursor
    - If you do ‘connect’ without running the terminal command it’ll prompt you to accept the same commands so Cursor can execute them on your behalf
- Option 3: Use terminal command + ‘connect’ in Cursor
    - It knows that you’re trying to connect to MongoDB
    - It needs to run the same command I did before but by itself now
- Option 4: Run the terminal command in Cursor chat
    - Still needs to execute the same command for you
    - Long loading

#### Method #2: Local

- Option 1: Using terminal command
    - Tell me what collections I have in my database- it sees that it’s configured but “ I don't have direct access to database querying tools in this environment”
- Option 2: ‘connect’ via Cursor

NOTE: Make sure I’m consistent with what I want to run, Local (localhost: 3000) vs Atlas connection ([cluster0.rss8y.mongodb.net](http://cluster0.rss8y.mongodb.net/))

1. **Run the command directly in your terminal:**shellscriptApply to mcp.json.  MDB_MCP_CONNECTION_STRING="mongodb://localhost:3000/demo" npx -y mongodb-mcp-server@latest --readOnly
2. **Or update your mcp.json file** to use the local connection string instead of the Atlas one.

Atlas- "MDB_MCP_CONNECTION_STRING": "${env:mongodb+srv://...}”

curl [](http://localhost:8080/tools)[http://localhost:3000/tools](http://localhost:3000/tools)



### Errors

#### Error #1: MongoNetworkError: connect ECONNREFUSED 127.0.0.1:27017

- The MongoDB server (mongod process) is not running or is not accessible at that address and port.

#### Error #2: 
"I don't have direct access to database querying tools in this environment"

#### If you're installing mongosh:
- Your file extension would be .dylib not .so like it says on the MongoDB site



Still getting ‘MongoNetworkError: connect ECONNREFUSED 127.0.0.1:27017’ error

I only have these in my bin folders- mongosh mongosh_crypt_v1.dylib

Files :

- [https://github.com/mongodb-js/mongodb-mcp-server?tab=readme-ov-file#mongodb-database-tools](https://github.com/mongodb-js/mongodb-mcp-server?tab=readme-ov-file#mongodb-database-tools)
- [https://www.mongodb.com/docs/mongodb-shell/install/](https://www.mongodb.com/docs/mongodb-shell/install/)


### Resources
- [Get Started with the MongoDB MCP Server](https://www.mongodb.com/docs/mcp-server/get-started/?client=cursor&deployment-type=atlas)
- [Service Accounts Overview](https://www.mongodb.com/docs/atlas/api/service-accounts-overview/)
- [MongoDB MCP Server Tools](https://www.mongodb.com/docs/mcp-server/tools/#std-label-mcp-server-tools)