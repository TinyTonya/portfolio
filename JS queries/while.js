# возвести двойку в степень, которую задал пользователь, но не более, чем в восьмую степень
# не использовать for И break

let power = Number(prompt('Укажи степень'));
let result = 1;
let i = 1;
// перепиши с помощью while
while (power >= i && i <= 8) {
  i = i + 1;
  result = result * 2;
};
alert(result);