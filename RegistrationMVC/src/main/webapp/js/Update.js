let packages = JSON.parse(localStorage.getItem('packages')) || [];

document.getElementById('updateBtn').addEventListener('click', function () {
    const packageId = document.getElementById('packageId').value;
    const packageName = document.getElementById('packageName').value;
    const description = document.getElementById('description').value;
    const price = document.getElementById('price').value;
    const image = document.getElementById('image').files[0];

    const existingPackage = packages.find(pkg => pkg.id == packageId);

    if (existingPackage) {
        existingPackage.name = packageName || existingPackage.name;
        existingPackage.description = description || existingPackage.description;
        existingPackage.price = price || existingPackage.price;
        if (image) {
            existingPackage.image = URL.createObjectURL(image);
        }

        localStorage.setItem('packages', JSON.stringify(packages));
        displayPackages();
        alert("Package updated successfully!");
    } else {
        alert("Package ID not found.");
    }
});

document.getElementById('deleteBtn').addEventListener('click', function () {
    const packageId = document.getElementById('packageId').value;

    // Confirmation before deletion
    if (confirm("Are you sure you want to delete this package?")) {
        packages = packages.filter(pkg => pkg.id != packageId);

        localStorage.setItem('packages', JSON.stringify(packages));
        displayPackages();
        alert("Package deleted successfully!");
    }
});

function displayPackages() {
    const packageList = document.getElementById('packages');
    packageList.innerHTML = '';

    packages.forEach(pkg => {
        const packageItem = document.createElement('li');
        packageItem.innerHTML = `
            <h3>${pkg.name}</h3>
            <p>${pkg.description}</p>
            <p>Price: $${pkg.price}</p>
            <img src="${pkg.image}" alt="Package Image" style="max-width: 100px;">
        `;
        packageList.appendChild(packageItem);
    });
}

displayPackages();/**
 * 
 */