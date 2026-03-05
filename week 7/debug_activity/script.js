document.getElementById("calcBtn").addEventListener("click", calculateAverage);

function calculateAverage() {
    const a = parseInt(document.getElementById("num1").value);
    console.log(typeof(a));
    const b = parseInt(document.getElementById("num2").value);
    console.log(typeof(b));
    const avg = (a + b) / 2;

    console.log("Average is:", avg);
    document.getElementById("results").textContent = avg;
}
