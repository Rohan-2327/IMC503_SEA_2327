# ----------------------------
# LOAD DATA
# ----------------------------
data <- read.csv("C:\\Users\\ASUS\\OneDrive\\Documents\\IMC503_SEA_2327\\data.csv", stringsAsFactors = FALSE)

# Check numeric & categorical columns
numeric_cols <- names(data)[sapply(data, is.numeric)]
cat_cols     <- names(data)[sapply(data, is.character)]

numeric_cols
cat_cols


# ----------------------------
# 1. HISTOGRAM (Confirmed cases)
# ----------------------------
hist(data$Confirmed,
     main = "Histogram of Confirmed Cases",
     xlab = "Confirmed Cases",
     col = "skyblue",
     border = "white")


# ----------------------------
# 2. BARPLOT (WHO Region)
# ----------------------------
barplot(table(data$WHO.Region),
        main = "Barplot of WHO Region",
        col = "orange",
        las = 2)


# ----------------------------
# 3. SCATTERPLOT (Confirmed vs Deaths)
# ----------------------------
plot(data$Confirmed,
     data$Deaths,
     main = "Confirmed vs Deaths",
     xlab = "Confirmed Cases",
     ylab = "Total Deaths",
     pch = 19)


# ----------------------------
# CREATE PDF WITH ALL PLOTS
# ----------------------------
pdf("IMC503_SEA_Plots.pdf")

# Histogram
hist(data$Confirmed,
     main = "Histogram of Confirmed Cases",
     xlab = "Confirmed Cases",
     col = "skyblue",
     border = "white")

# Barplot
barplot(table(data$WHO.Region),
        main = "Barplot of WHO Region",
        col = "orange",
        las = 2)

# Scatterplot
plot(data$Confirmed,
     data$Deaths,
     main = "Confirmed vs Deaths",
     xlab = "Confirmed Cases",
     ylab = "Total Deaths",
     pch = 19)

dev.off()

