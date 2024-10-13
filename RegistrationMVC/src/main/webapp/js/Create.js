let packages = JSON.parse(localStorage.getItem('packages')) || [];

document.getElementById('createBtn').addEventListener('click', function () {
    const packageName = document.getElementById('packageName').value;
    const description = document.getElementById('description').value;
    const price = document.getElementById('price').value;
    const image = document.getElementById('image').files[0];

    if (!packageName || !description || !price || !image) {
        alert("Please fill out all fields.");
        return;
    }

    const newPackage = {
        id: Date.now(),
        name: packageName,
        description: description,
        price: price,
        image: URL.createObjectURL(image)
    };

    packages.push(newPackage);
    localStorage.setItem('packages', JSON.stringify(packages));

    alert("Package created successfully!");
    document.getElementById('createPackageForm').reset();
});/**
 * 
 */