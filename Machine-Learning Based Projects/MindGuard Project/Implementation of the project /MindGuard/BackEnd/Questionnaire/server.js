// using node v16

import express from "express";
import db from "./config/database.js";
import propertyRoutes from "./routes/index.js";
import cors from "cors";
import { createdatabase } from "./config/database.js";
 
const app = express();
 
try {
    createdatabase();
    await db.authenticate();
    await db.sync();
    console.log('Database connected...');
} catch (error) {
    console.error('Connection error:', error);
}
 
app.use(cors());
app.use(express.json());
app.use('/properties', propertyRoutes);
 
app.listen(8000, () => console.log('Server running at port 8000'));    