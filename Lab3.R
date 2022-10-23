# 1. Функція add2(x, y), яка повертає суму двох чисел.
add <- function(x, y) {
  return(x+y)
}
print(add(5, 7))

# 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, 
# які більше n. По замовчуванню n = 10.
above <- function(x, n = 10) {
    return(x[which(x > n)])
}
v <- c(10, 11, -2, 5, 15)
print(above(v, 9))
print(above(v))

# 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, 
# та повертає елементи вектору, які відповідають умові expression. 
# Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. 
# Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
my_ifelse <- function(x, exp, n) {
    if (exp == "<") {
        return(x[which(x < n)])
    } else if (exp == ">") {
        return(x[which(x > n)])
    } else if (exp == "<=") {
        return(x[which(x <= n)])
    } else if (exp == ">=") {
        return(x[which(x >= n)])
    } else if (exp == "==") {
      return(x[which(x == n)])
    } else {
        return(x)
    }
}
v <- c(10, 11, -2, 5, 15)
print(my_ifelse(v, ">", 7))
print(my_ifelse(v, "!", 7))

# 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, 
# або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
columnmean <- function(x, removeNA = TRUE) {
    res = c()
    for(i in 1:ncol(x)){
        if (removeNA && length(which(!is.na(x[[1]]))) > 0) {
            res[i] <- mean(x[[i]], na.rm=TRUE)
        } else {
            res[i] <- mean(x[[i]])
        }
    }
    return(res)
}
y <- data.frame(a = rnorm(100), b = 1:100, cc = rnorm(100))
print(columnmean(y, FALSE))

m <- matrix(c(0.5, NA, 0, 2, 1.3, NA, 131, 2.8, 2.2, NA, 7, 5.1), ncol = 3, nrow = 4, byrow = TRUE)
print(columnmean(m, TRUE))

[1] 12
[1] 10 11 15
[1] 11 15
[1] 10 11 15
[1] 10 11 -2  5 15
[1] -0.08723836 50.50000000 -0.09119221
[1]   0.5   2.0 131.0
