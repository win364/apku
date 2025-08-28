@echo off
echo ==================================================
echo 🚀 ИСПРАВЛЕННЫЙ ДЕПЛОЙ MINES PREDICTOR НА VERCEL
echo ==================================================
echo.

echo 📦 Проверка Vercel CLI...
vercel --version >nul 2>&1
if errorlevel 1 (
    echo 📦 Установка Vercel CLI...
    npm install -g vercel
) else (
    echo ✅ Vercel CLI уже установлен
)

echo.
echo 🔐 Вход в Vercel...
vercel login

echo.
echo 🚀 Деплой проекта...
vercel --prod --yes

echo.
echo ✅ Деплой завершен!
echo 🌐 Ваш сайт доступен по ссылке выше
echo.
pause
