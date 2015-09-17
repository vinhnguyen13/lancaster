<?php

namespace johnb0\gallery\traits;

use johnb0\gallery\Module;

/**
 * Class ModuleTrait
 * @package johnb0\gallery\traits
 * Implements `getModule` method, to receive current module instance.
 */
trait ModuleTrait
{
    /**
     * @var johnb0\gallery\Module|null Module instance
     */
    private $_module;

    /**
     * @return johnb0\gallery\Module|null Module instance
     */
    public function getModule()
    {
        if ($this->_module === null) {
            $this->_module = Module::getInstance();
        }
        return $this->_module;
    }
}
