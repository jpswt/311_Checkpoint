const express = require('express');
const router = express.Router();
const chemicalController = require('../controllers/chemicals');

router
	// get summary of chemical (GET)
	.get('/chemicals', chemicalController.chemicalList)

	// get detail of a single chemical, given its id (GET)
	.get('/chemicals/:id', chemicalController.chemicalDetails)

	// create a new chemical (POST)
	.post('/chemicals', chemicalController.createChemical)

	//update a chemical, given its id (PUT)
	.put('/chemicals/:id', chemicalController.updateChemical)

	//delete a chemical, given its id (DELETE)
	.delete('/chemicals/:id', chemicalController.deleteChemical);

//export router module
module.exports = router;
