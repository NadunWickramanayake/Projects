import express from "express";
 
import { 
    getAllProperties,
    createProperty,
    getPropertyById,
    updateProperty,
    deleteProperty
} from "../controllers/Properties.js";
 
const router = express.Router();
 
router.get('/', getAllProperties);
router.get('/:id', getPropertyById);
router.post('/', createProperty);
router.patch('/:id', updateProperty);
router.delete('/:id', deleteProperty);
 
export default router;