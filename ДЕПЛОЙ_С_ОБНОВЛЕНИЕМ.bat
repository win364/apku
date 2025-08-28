@echo off
echo ==================================================
echo 🚀 ДЕПЛОЙ С ПРИНУДИТЕЛЬНЫМ ОБНОВЛЕНИЕМ
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
echo 🗑️ Удаление предыдущего деплоя...
vercel remove --yes

echo.
echo 🚀 Новый деплой проекта...
vercel --prod --yes

echo.
echo ✅ Деплой завершен!
echo 🌐 Ваш сайт доступен по ссылке выше
echo.
echo 💡 Для тестирования статических файлов:
echo    Добавьте /test.html к URL
echo.
pause
