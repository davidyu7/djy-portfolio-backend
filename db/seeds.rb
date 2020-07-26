# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat_gd = Category.create({ name: "Graphic Design" })
cat_wd = Category.create({ name: "Web Development" })
cat_ad = Category.create({ name: "Architectural Design" })

ymun = Folder.create({ name: "Yale Model United Nations", description: "YMUN is the largest model UN conference on Yale's campus, with nearly 2000 participants." })
arch = Folder.create({ name: "Scales of Design - ARCH 200", description: "The first studio class in the undergraduate architecture sequence at Yale, traditionally taken spring of sophomore year." })
side = Folder.create({ name: "Side projects", description: "Just messing around in my free time." })

sql = Tag.create({ name: "SQL" })
sketchup = Tag.create({ name: "SketchUp" })
python = Tag.create({ name: "Python" })
illustrator = Tag.create({ name: "Adobe Illustrator" })
indesign = Tag.create({ name: "Adobe InDesign" })

ymun_guides = Project.create({
    title: "YMUN XLVI Participant Guides",
    description: "These delegate and advisor guides are handed out to each conference participant upon their arrival to Yale's campus. They contain essential information about the event.",
    thumbnail_url: "https://images.squarespace-cdn.com/content/v1/5457f2ece4b0a485997c0d67/1567652023213-OIE8I3NYX2KLJK4XUWUH/ke17ZwdGBToddI8pDm48kLxnK526YWAH1qleWz-y7AFZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVFUQAah1E2d0qOFNma4CJuw0VgyloEfPuSsyFRoaaKT76QvevUbj177dmcMs1F0H-0/YMUN+Logo+Medium.png",
    category: cat_gd,
    folder: ymun,
    tags: [indesign, illustrator]
})

ymun_dataman = Project.create({
    title: "YMUN Data Management System",
    description: "An intenal database for YMUN staff to organize and access information about participants.",
    github_url: "https://github.com/davidyu7/YMUN-dataman",
    thumbnail_url: "https://images.squarespace-cdn.com/content/v1/5457f2ece4b0a485997c0d67/1577758746104-UMWA46VQWKQH2IQ5J3M4/ke17ZwdGBToddI8pDm48kEBW7z-dDW5qDFwbZpebXfp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UUXw44irD28DkWYx3-1dwLa4g0PDx-AhloRAoRgIe7QLG6v6ULRah83RgHXAWD5lbQ/home+tile_our+website.png",
    category: cat_wd,
    folder: ymun,
    tags: [sql, python]
})

corbussy = Project.create({
    title: "Unite d'Habitacion: Scale Model",
    description: "An imaginatively elaborated scale model of Le Corbusier's Unite d'Habitacion in Marseilles, exploring the philosophy behind the 'city in the sky'.",
    thumbnail_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Le_Corbusier_%281964%29.jpg/1200px-Le_Corbusier_%281964%29.jpg",
    category: cat_ad,
    folder: arch,
    tags: [sketchup, illustrator]
})

st_anthony = Project.create({
    title: "St. Anthony Hall Posters",
    description: "A set of posters for various St. Anthony Hall events featuring a new design theme for the organization.",
    thumbnail_url: "https://alchetron.com/cdn/st-anthony-hall-5c111c4d-27f9-4065-a2bd-e2defa37817-resize-750.jpeg",
    category: cat_gd,
    folder: side,
    tags: [illustrator]
})

# ymun_guides = Project.create({
#     title: "YMUN XLVI Participant Guides",
#     description: "These delegate and advisor guides are handed out to each conference participant upon their arrival to Yale's campus. They contain essential information about the event.",
#     thumbnail_url: "https://images.squarespace-cdn.com/content/v1/5457f2ece4b0a485997c0d67/1567652023213-OIE8I3NYX2KLJK4XUWUH/ke17ZwdGBToddI8pDm48kLxnK526YWAH1qleWz-y7AFZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVFUQAah1E2d0qOFNma4CJuw0VgyloEfPuSsyFRoaaKT76QvevUbj177dmcMs1F0H-0/YMUN+Logo+Medium.png",
#     category: cat_gd,
#     folder: ymun,
# })