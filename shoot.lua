gg.alert("🎮 اهلا بكم في سكربت ناجي النقاش 🎮\n⚽ مخصص للمباريات الاوفللاين والتدريب فقط ⚽")

function enableGodShooting()
    gg.clearResults()
    
    -- البحث عن قيم التسديد في الذاكرة
    gg.searchNumber("85;90;80;75;70::13", gg.TYPE_FLOAT)
    
    if gg.getResultsCount() > 0 then
        local results = gg.getResults(100)
        
        for i, v in ipairs(results) do
            v.value = 999999
            v.freeze = false  -- تجميد اختياري
        end
        
        gg.setValues(results)
        gg.toast("✅ تم تفعيل التسديد الإلهي 999999!")
        return true
    else
        -- طريقة بديلة للبحث
        gg.searchNumber("1~100", gg.TYPE_FLOAT)
        local results = gg.getResults(500)
        
        if #results > 0 then
            for i, v in ipairs(results) do
                if v.value >= 70 and v.value <= 95 then
                    v.value = 999999
                end
            end
            gg.setValues(results)
            gg.toast("✅ تم تعديل القيم بنجاح!")
            return true
        end
    end
    return false
end

function enableSuperSpeed()
    gg.clearResults()
    gg.searchNumber("80;85;90::9", gg.TYPE_FLOAT)
    
    if gg.getResultsCount() > 0 then
        local results = gg.getResults(50)
        for i, v in ipairs(results) do
            v.value = 999999
        end
        gg.setValues(results)
        gg.toast("✅ تم تفعيل السرعة الخارقة!")
    end
end

function enablePerfectAccuracy()
    gg.clearResults()
    gg.searchNumber("75;80;85::7", gg.TYPE_FLOAT)
    
    if gg.getResultsCount() > 0 then
        local results = gg.getResults(50)
        for i, v in ipairs(results) do
            v.value = 999999
        end
        gg.setValues(results)
        gg.toast("✅ تم تفعيل الدقة المطلقة!")
    end
end

function enableAllPower()
    gg.alert("💀 تفعيل كل القوى الإلهية...")
    
    -- تفعيل كل الميزات
    enableGodShooting()
    gg.sleep(500)
    enableSuperSpeed()
    gg.sleep(500)
    enablePerfectAccuracy()
    gg.sleep(500)
    
    gg.alert("🎯 كل القوى مفعلة!\n⚡ التسديد: 999999\n🎯 الدقة: 999999\n💨 السرعة: 999999")
end

-- القائمة الرئيسية
function mainMenu()
    while true do
        local menu = gg.choice({
            "🎯 تفعيل التسديد الإلهي (999999)",
            "⚡ تفعيل السرعة الخارقة", 
            "🎯 تفعيل الدقة المطلقة",
            "💀 تفعيل كل القوى",
            "📊 حالة السكريبت",
            "🚪 الخروج من القائمة"
        }, nil, "سكربت ناجي النقاش - eFootball\n⚽ للأوفلاين والتدريب فقط ⚽")
        
        if menu == nil then
            gg.alert("شكراً لاستخدامكم سكربت ناجي النقاش!")
            os.exit()
        end
        
        if menu == 1 then
            if enableGodShooting() then
                gg.alert("✅ تم تفعيل التسديد الإلهي!\n💥 قوة التسديد: 999999\n🎯 الدقة: 999999")
            else
                gg.alert("❌ لم يتم العثور على القيم\n🔍 تأكد من تشغيل اللعبة أولاً")
            end
            
        elseif menu == 2 then
            enableSuperSpeed()
            
        elseif menu == 3 then
            enablePerfectAccuracy()
            
        elseif menu == 4 then
            enableAllPower()
            
        elseif menu == 5 then
            gg.alert("📊 حالة سكربت ناجي النقاش:\n\n🎯 التسديد: 999999\n⚡ السرعة: 999999\n🎯 الدقة: 999999\n💥 القوة: 999999\n\n⚽ للأوفلاين فقط!")
            
        elseif menu == 6 then
            gg.alert("🚪 شكراً لاستخدامكم سكربت ناجي النقاش!\n👋 إلى اللقاء!")
            os.exit()
        end
        
        gg.sleep(300)
    end
end

-- بدء التشغيل
gg.setVisible(false)
gg.toast("🎮 سكربت ناجي النقاش - جاهز!")
mainMenu()
