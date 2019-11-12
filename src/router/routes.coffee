routes = [
    path: '/'
    component: -> import('layouts/MyLayout.vue')
    children: [
        path: ''
        component: -> import('pages/Index.vue')
    ]
]

if process.env.MODE isnt 'ssr'
    routes.push
        path: '*'
        component: -> import('pages/Error404.vue')

export default routes