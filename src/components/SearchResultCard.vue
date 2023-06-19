<template>
  <q-card class="col-12 q-px-md search-result-card no-shadow">
    <q-card-section horizontal class="justify-between">
      <q-card-section>
        <div class="text-h5 q-mt-sm q-mb-xs text-grey-8">
          {{ result.title }}
        </div>
        <div class="text-caption text-grey">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </div>
        <div class="text-caption text-grey description">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem
          ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor
          sit amet, consectetur adipiscing elit, sed do eiusmod tempor
          incididunt ut labore et dolore magna aliqua.
        </div>
        <!-- <q-separator vertical />
                <q-card-section>
                    <div class="text-caption text-grey phase">{{ result.phase }}</div>
                    <div class="text-caption text-grey status">{{ result.status }}</div>
                </q-card-section>
                <q-separator vertical />
                <q-card-section>
                    <div class="text-caption text-grey phase">Text 1</div>
                    <div class="text-caption text-grey status">Text 2</div>
                </q-card-section> -->
      </q-card-section>
      <q-card-section horizontal class="q-gutter-sm">
        <q-btn round flat class="text-grey-7" icon="share" />
        <q-btn round flat class="text-grey-7" icon="more_horiz" />
      </q-card-section>
    </q-card-section>
    <q-card-actions>
      <q-btn flat class="text-grey-7" icon="info" label="Link">
        <a :href="result.link" target="_blank" class="link"></a>
      </q-btn>
      <q-btn flat class="text-grey-7" icon="rocket_launch" label="Link">
        <a :href="result.link" target="_blank" class="link"></a>
      </q-btn>
      <q-btn flat class="text-grey-7" icon="build" label="Link">
        <a :href="result.link" target="_blank" class="link"></a>
      </q-btn>
    </q-card-actions>
    <q-separator class="q-mt-md" />
  </q-card>
</template>

<script>
export default {
  name: "SearchResultCard",
  props: {
    result: {
      type: Object,
      required: true,
    },
  },
};
</script>

<style scoped>
.search-result-card {
  margin-bottom: 16px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.title {
  font-size: 18px;
  font-weight: bold;
}

.link {
  color: #1a0dab;
  font-size: 14px;
  margin-top: 8px;
  display: block;
  text-decoration: none;
}

.description {
  font-size: 14px;
  margin-top: 8px;
}
</style>
