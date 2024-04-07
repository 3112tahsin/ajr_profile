// function generatePDF(){
//     const element = document.getElementById("invoice");

//     html2pdf()
//     .from(element)
//     .save();
// }

window.onload = function () {
        document.getElementById("download").addEventListener("click", () => {
            console.log("Download button clicked");

            const invoice = document.getElementById("invoice");
            console.log("Invoice element:", invoice);

            var opt = {
                margin: 1,
                filename: 'myfile.pdf',
                image: { type: 'any', quality: 0.98 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'A4', orientation: 'portrait' }
            };

            console.log("Options:", opt);

            html2pdf().from(invoice).set(opt).save();
        });
    };

