find_package(Qt5 COMPONENTS LinguistTools)
set(TRANSLATIONS_DIR ${CMAKE_SOURCE_DIR}/translations)
file(GLOB TRANSLATIONS_TS ${TRANSLATIONS_DIR}/**.ts)
qt5_add_translation(QM_FILES ${TRANSLATIONS_TS})
qt5_create_translation(TRANSLATIONS_FROM_SOURCES ${QV2RAY_SOURCES} ${TRANSLATIONS_TS} OPTIONS -locations none)
add_custom_target(lupdate
    DEPENDS ${TRANSLATIONS_FROM_SOURCES}
)
set_target_properties(lupdate PROPERTIES EXCLUDE_FROM_ALL TRUE)
