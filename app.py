app.config["MONGO_URI"] = os.getenv("MONGO_URI")
app.secret_key = os.getenv("SECRET_KEY")

# Initialize MongoDB
mongo.init_app(app, tlsCAFile=certifi.where())

return app