import Property from "../ models/ propertyModel.js";
 
export const getAllProperties = async (req, res) => {
    try {
        const properties = await Property.findAll();
        res.json(properties);
    } catch (error) {
        res.json({ message: error.message });
    }  
}
 
export const getPropertyById = async (req, res) => {
    try {
        const property = await Property.findAll({
            where: {
                id: req.params.id
            }
        });
        res.json(property[0]);
    } catch (error) {
        res.json({ message: error.message });
    }  
}
 
export const createProperty = async (req, res) => {
    try {
        await Property.create(req.body);
        res.json({
            "message": "Property Created"
        });
    } catch (error) {
        res.json({ message: error.message });
    }  
}
 
export const updateProperty = async (req, res) => {
    try {
        await Property.update(req.body, {
            where: {
                id: req.params.id
            }
        });
        res.json({
            "message": "Property Updated"
        });
    } catch (error) {
        res.json({ message: error.message });
    }  
}
 
export const deleteProperty = async (req, res) => {
    try {
        await Property.destroy({
            where: {
                id: req.params.id
            }
        });
        res.json({
            "message": "Property Deleted"
        });
    } catch (error) {
        res.json({ message: error.message });
    }  
}