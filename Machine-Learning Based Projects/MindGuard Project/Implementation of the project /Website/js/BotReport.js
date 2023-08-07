import jsPDF from 'js';

function generatePDF() {

	const doc = new jsPDF();

	// Get the HTML content of the current webpage
	const html = document.documentElement.innerHTML;
	
	// Convert the HTML to a PDF
	doc.fromHTML(html);
	
	// Save the PDF file
	doc.save("webpage.pdf");
}
