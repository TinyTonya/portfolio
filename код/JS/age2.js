let age = prompt('Укажите свой возраст');
let ageNormalized = Number(age);
if (ageNormalized >= 18 && ageNormalized <= 50) {
    alert('Всё в порядке');
}
if (ageNormalized > 50 || ageNormalized < 18) {
    alert('Ты не пройдёшь!');
}