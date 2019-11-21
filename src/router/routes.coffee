import generated from 'vue-auto-routing'

routes = [
    path: '/'
    component: -> import('layouts/MyLayout.vue')
    children: [
        ...generated
    ]
]

if process.env.MODE isnt 'ssr'
    routes.push
        # path: '*'
        # component: -> import('pages/Error404.vue')
        path: '/error404'
        alias: '*'

export default routes