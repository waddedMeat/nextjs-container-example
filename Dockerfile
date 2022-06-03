# dependencies
FROM node:lts as dependencies
WORKDIR /my-app
COPY ./my-app/package*.json ./
RUN npm i

# builder
FROM node:lts as builder
WORKDIR /my-app
COPY --from=dependencies /my-app/node_modules ./node_modules
COPY ./my-app .
RUN npm run build

# Runner
FROM node:lts as runner
WORKDIR /my-app

ENV NODE_ENV production

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

# You only need to copy next.config.js if you are NOT using the default configuration
# COPY --from=builder /my-app/next.config.js ./
COPY --from=builder /my-app/public ./public
COPY --from=builder /my-app/package.json ./package.json

# Automatically leverage output traces to reduce image size 
# https://nextjs.org/docs/advanced-features/output-file-tracing
#COPY --from=builder --chown=nextjs:nodejs /my-app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /my-app/node_modules ./node_modules
COPY --from=builder --chown=nextjs:nodejs /my-app/.next ./.next

USER nextjs


EXPOSE 3000

CMD ["npm", "start"]
