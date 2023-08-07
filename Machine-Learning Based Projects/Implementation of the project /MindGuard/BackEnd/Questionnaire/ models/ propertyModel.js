import { Sequelize } from "sequelize";
import db from "../config/database.js";
 
const { DataTypes } = Sequelize;
 
const Property = db.define('questionaire_records',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey:true
    },
    userId:{
        type: DataTypes.INTEGER
    },
    q1:{
        type: DataTypes.INTEGER
    },
    q2:{
        type: DataTypes.INTEGER
    },
    q3:{
        type: DataTypes.INTEGER
    },
    q4:{
        type: DataTypes.INTEGER
    },
    q5:{
        type: DataTypes.INTEGER
    },
    q6:{
        type: DataTypes.INTEGER
    },
    q7:{
        type: DataTypes.INTEGER
    },
    q8:{
        type: DataTypes.INTEGER
    },
    q9:{
        type: DataTypes.INTEGER
    },
    total_Score:{
        type: DataTypes.INTEGER
    }
},{
    freezeTableName: true
});
 
export default Property;